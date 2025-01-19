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
              #                     18   Define merge_sort_0 "l_17_0,r_17_0," -> merge_sort_ret_0 
    .globl merge_sort
    .type merge_sort,@function
merge_sort:
              #                    mem layout:|ra_merge_sort:8 at 248|s0_merge_sort:8 at 240|l _s17 _i0:4 at 236|l _s17 _i1:4 at 232|r _s17 _i0:4 at 228|temp_0_arithop _s19 _i0:4 at 224|temp_1_arithop _s19 _i0:4 at 220|i _s19 _i0:4 at 216|i _s19 _i1:4 at 212|i _s19 _i2:4 at 208|i _s19 _i5:4 at 204|j _s19 _i1:4 at 200|j _s19 _i2:4 at 196|j _s19 _i4:4 at 192|k _s19 _i0:4 at 188|k _s19 _i1:4 at 184|k _s19 _i2:4 at 180|k _s19 _i4:4 at 176|temp_2_ptr_of_*buf_0:8 at 168|temp_3_ptr_of_*buf_0:8 at 160|temp_4_ele_of_*buf_0 _s53 _i0:4 at 156|temp_5_arithop _s53 _i0:4 at 152|temp_6_ptr_of_*buf_0:8 at 144|temp_7_ptr_of_*buf_0:8 at 136|temp_8_ele_of_*buf_0 _s47 _i0:4 at 132|temp_9_arithop _s47 _i0:4 at 128|temp_10_arithop _s47 _i0:4 at 124|none:4 at 120|temp_11_ptr_of_*buf_0:8 at 112|temp_12_ptr_of_*buf_0:8 at 104|temp_13_ele_of_*buf_0 _s41 _i0:4 at 100|temp_14_arithop _s41 _i0:4 at 96|temp_15_arithop _s41 _i0:4 at 92|none:4 at 88|temp_16_ptr_of_*buf_0:8 at 80|temp_17_ptr_of_*buf_0:8 at 72|temp_19_arithop _s35 _i0:4 at 68|temp_20_arithop _s29 _i0:4 at 64|temp_21_ptr_of_*buf_0:8 at 56|temp_22_ptr_of_*buf_0:8 at 48|temp_24_arithop _s32 _i0:4 at 44|temp_25_arithop _s20 _i0:4 at 40|temp_26_cmp _s20 _i0:1 at 39|temp_27_cmp _s27 _i0:1 at 38|temp_28_cmp _s27 _i0:1 at 37|temp_29_cmp _s39 _i0:1 at 36|temp_30_cmp _s45 _i0:1 at 35|temp_31_cmp _s51 _i0:1 at 34|none:2 at 32|temp_32_ptr_of_*buf_0:8 at 24|temp_33_ele_of_*buf_0 _s30 _i0:4 at 20|none:4 at 16|temp_34_ptr_of_*buf_0:8 at 8|temp_35_ele_of_*buf_0 _s30 _i0:4 at 4|temp_36_cmp _s30 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-256
              #                    store to ra_merge_sort_0 in mem offset legal
    sd      ra,248(sp)
              #                    store to s0_merge_sort_0 in mem offset legal
    sd      s0,240(sp)
    addi    s0,sp,256
              #                     169  buf_0_1 = chi buf_0_0:18 
              #                     20   alloc i32 [temp_0_arithop_19] 
              #                     22   alloc i32 [temp_1_arithop_19] 
              #                     25   alloc i32 [mid_19] 
              #                     29   alloc i32 [i_19] 
              #                     31   alloc i32 [j_19] 
              #                     33   alloc i32 [k_19] 
              #                     34   alloc ptr->i32 [temp_2_ptr_of_*buf_0_53] 
              #                     36   alloc ptr->i32 [temp_3_ptr_of_*buf_0_53] 
              #                     38   alloc i32 [temp_4_ele_of_*buf_0_53] 
              #                     43   alloc i32 [temp_5_arithop_53] 
              #                     46   alloc ptr->i32 [temp_6_ptr_of_*buf_0_47] 
              #                     48   alloc ptr->i32 [temp_7_ptr_of_*buf_0_47] 
              #                     50   alloc i32 [temp_8_ele_of_*buf_0_47] 
              #                     55   alloc i32 [temp_9_arithop_47] 
              #                     58   alloc i32 [temp_10_arithop_47] 
              #                     61   alloc ptr->i32 [temp_11_ptr_of_*buf_0_41] 
              #                     63   alloc ptr->i32 [temp_12_ptr_of_*buf_0_41] 
              #                     65   alloc i32 [temp_13_ele_of_*buf_0_41] 
              #                     70   alloc i32 [temp_14_arithop_41] 
              #                     73   alloc i32 [temp_15_arithop_41] 
              #                     76   alloc ptr->i32 [temp_16_ptr_of_*buf_0_35] 
              #                     78   alloc ptr->i32 [temp_17_ptr_of_*buf_0_35] 
              #                     80   alloc i32 [temp_18_ele_of_*buf_0_35] 
              #                     85   alloc i32 [temp_19_arithop_35] 
              #                     88   alloc i32 [temp_20_arithop_29] 
              #                     91   alloc ptr->i32 [temp_21_ptr_of_*buf_0_32] 
              #                     93   alloc ptr->i32 [temp_22_ptr_of_*buf_0_32] 
              #                     95   alloc i32 [temp_23_ele_of_*buf_0_32] 
              #                     100  alloc i32 [temp_24_arithop_32] 
              #                     105  alloc i32 [temp_25_arithop_20] 
              #                     107  alloc i1 [temp_26_cmp_20] 
              #                     112  alloc i1 [temp_27_cmp_27] 
              #                     114  alloc i1 [temp_28_cmp_27] 
              #                     123  alloc i1 [temp_29_cmp_39] 
              #                     128  alloc i1 [temp_30_cmp_45] 
              #                     133  alloc i1 [temp_31_cmp_51] 
              #                     139  alloc ptr->i32 [temp_32_ptr_of_*buf_0_30] 
              #                     141  alloc i32 [temp_33_ele_of_*buf_0_30] 
              #                     144  alloc ptr->i32 [temp_34_ptr_of_*buf_0_30] 
              #                     146  alloc i32 [temp_35_ele_of_*buf_0_30] 
              #                     149  alloc i1 [temp_36_cmp_30] 
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: r_17_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     106  temp_25_arithop_20_0 = Add i32 l_17_0, 1_0 
              #                    occupy a0 with l_17_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_25_arithop_20_0
    ADDW    a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                     108  temp_26_cmp_20_0 = icmp i32 Sge temp_25_arithop_20_0, r_17_0 
              #                    occupy a3 with temp_25_arithop_20_0
              #                    occupy a1 with r_17_0
              #                    occupy a4 with temp_26_cmp_20_0
    slt     a4,a3,a1
    xori    a4,a4,1
              #                    free a3
              #                    free a1
              #                    free a4
              #                     225  untrack temp_25_arithop_20_0 
              #                    occupy a3 with temp_25_arithop_20_0
              #                    release a3 with temp_25_arithop_20_0
              #                     111  br i1 temp_26_cmp_20_0, label branch_true_21, label branch_false_21 
              #                    occupy a4 with temp_26_cmp_20_0
              #                    free a4
              #                    occupy a4 with temp_26_cmp_20_0
    bnez    a4, .branch_true_21
              #                    free a4
    j       .branch_false_21
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: r_17_0, tracked: true } |     a4:Freed { symidx: temp_26_cmp_20_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     109  label branch_true_21: 
.branch_true_21:
              #                     235  untrack l_17_0 
              #                    occupy a0 with l_17_0
              #                    release a0 with l_17_0
              #                     234  untrack i_19_1 
              #                     233  untrack temp_26_cmp_20_0 
              #                    occupy a4 with temp_26_cmp_20_0
              #                    release a4 with temp_26_cmp_20_0
              #                     232  untrack k_19_1 
              #                     231  untrack k_19_0 
              #                     230  untrack r_17_0 
              #                    occupy a1 with r_17_0
              #                    release a1 with r_17_0
              #                     229  untrack temp_1_arithop_19_0 
              #                     228  untrack j_19_1 
              #                     227  untrack i_19_0 
              #                     226  untrack temp_0_arithop_19_0 
              #                     170  mu buf_0_1:104 
              #                     104  ret 
              #                    load from ra_merge_sort_0 in mem
    ld      ra,248(sp)
              #                    load from s0_merge_sort_0 in mem
    ld      s0,240(sp)
    addi    sp,sp,256
    ret
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: r_17_0, tracked: true } |     a4:Freed { symidx: temp_26_cmp_20_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     110  label branch_false_21: 
.branch_false_21:
              #                     236  untrack temp_26_cmp_20_0 
              #                    occupy a4 with temp_26_cmp_20_0
              #                    release a4 with temp_26_cmp_20_0
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: r_17_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     21   temp_0_arithop_19_0 = Add i32 l_17_0, r_17_0 
              #                    occupy a0 with l_17_0
              #                    occupy a1 with r_17_0
              #                    occupy a2 with temp_0_arithop_19_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     23   temp_1_arithop_19_0 = Div i32 temp_0_arithop_19_0, 2_0 
              #                    occupy a2 with temp_0_arithop_19_0
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with temp_1_arithop_19_0
    divw    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     239  untrack temp_0_arithop_19_0 
              #                    occupy a2 with temp_0_arithop_19_0
              #                    release a2 with temp_0_arithop_19_0
              #                     24   (nop) 
              #                     26    Call void merge_sort_0(l_17_0, temp_1_arithop_19_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with l_17_0
              #                    store to l_17_0 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with l_17_0
              #                    occupy a1 with r_17_0
              #                    store to r_17_0 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with r_17_0
              #                    occupy a4 with temp_1_arithop_19_0
              #                    store to temp_1_arithop_19_0 in mem offset legal
    sw      a4,220(sp)
              #                    release a4 with temp_1_arithop_19_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_l_17_0_0
              #                    load from l_17_0 in mem


    lw      a0,236(sp)
              #                    occupy a1 with _anonymous_of_temp_1_arithop_19_0_0
              #                    load from temp_1_arithop_19_0 in mem


    lw      a1,220(sp)
              #                    arg load ended


    call    merge_sort
              #                     171  mu buf_0_1:26 
              #                     172  buf_0_2 = chi buf_0_1:26 
              #                     27    Call void merge_sort_0(temp_1_arithop_19_0, r_17_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_1_arithop_19_0_0
              #                    load from temp_1_arithop_19_0 in mem


    lw      a0,220(sp)
              #                    occupy a1 with _anonymous_of_r_17_0_0
              #                    load from r_17_0 in mem


    lw      a1,228(sp)
              #                    arg load ended


    call    merge_sort
              #                     173  mu buf_0_2:27 
              #                     174  buf_0_3 = chi buf_0_2:27 
              #                     28   i_19_0 = i32 l_17_0 
              #                    occupy a0 with l_17_0
              #                    load from l_17_0 in mem


    lw      a0,236(sp)
              #                    occupy a1 with i_19_0
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     30   (nop) 
              #                     32   k_19_0 = i32 l_17_0 
              #                    occupy a0 with l_17_0
              #                    occupy a2 with k_19_0
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                     203  j_19_1 = i32 temp_1_arithop_19_0 
              #                    occupy a3 with temp_1_arithop_19_0
              #                    load from temp_1_arithop_19_0 in mem


    lw      a3,220(sp)
              #                    occupy a4 with j_19_1
    mv      a4, a3
              #                    free a3
              #                    free a4
              #                     204  i_19_1 = i32 i_19_0 
              #                    occupy a1 with i_19_0
              #                    occupy a5 with i_19_1
    mv      a5, a1
              #                    free a1
              #                    free a5
              #                     238  untrack i_19_0 
              #                    occupy a1 with i_19_0
              #                    release a1 with i_19_0
              #                     205  k_19_1 = i32 k_19_0 
              #                    occupy a2 with k_19_0
              #                    occupy a1 with k_19_1
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                     237  untrack k_19_0 
              #                    occupy a2 with k_19_0
              #                    release a2 with k_19_0
              #                          jump label: while.head_28 
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     121  label while.head_28: 
.while.head_28:
              #                     113  temp_27_cmp_27_0 = icmp i32 Slt i_19_1, temp_1_arithop_19_0 
              #                    occupy a5 with i_19_1
              #                    occupy a3 with temp_1_arithop_19_0
              #                    occupy a2 with temp_27_cmp_27_0
    slt     a2,a5,a3
              #                    free a5
              #                    free a3
              #                    free a2
              #                     122  br i1 temp_27_cmp_27_0, label branch_short_circuit_p_true_236, label UP_20_0 
              #                    occupy a2 with temp_27_cmp_27_0
              #                    free a2
              #                    occupy a2 with temp_27_cmp_27_0
    bnez    a2, .branch_short_circuit_p_true_236
              #                    free a2
    j       .UP_20_0
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: temp_27_cmp_27_0, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     118  label branch_short_circuit_p_true_236: 
.branch_short_circuit_p_true_236:
              #                     115  temp_28_cmp_27_0 = icmp i32 Slt j_19_1, r_17_0 
              #                    occupy a4 with j_19_1
              #                    occupy a6 with r_17_0
              #                    load from r_17_0 in mem


    lw      a6,228(sp)
              #                    occupy a7 with temp_28_cmp_27_0
    slt     a7,a4,a6
              #                    free a4
              #                    free a6
              #                    free a7
              #                     120  br i1 temp_28_cmp_27_0, label branch_short_circuit_c_true_236, label UP_23_0 
              #                    occupy a7 with temp_28_cmp_27_0
              #                    free a7
              #                    occupy a7 with temp_28_cmp_27_0
    bnez    a7, .branch_short_circuit_c_true_236
              #                    free a7
    j       .UP_23_0
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: temp_27_cmp_27_0, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: temp_28_cmp_27_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     116  label branch_short_circuit_c_true_236: 
.branch_short_circuit_c_true_236:
              #                     140  temp_32_ptr_of_*buf_0_30 = GEP *buf_0:Array:i32:[None, Some(100_0)] [Some(0_0), Some(j_19_1)] 
              #                    occupy s1 with temp_32_ptr_of_*buf_0_30
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 0
    add     s1,s1,s2
              #                    free s2
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with j_19_1
    mv      s3, a4
              #                    free a4
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy s4 with *buf_0
              #                       load label buf as ptr to reg
    la      s4, buf
              #                    occupy reg s4 with *buf_0
    add     s1,s1,s4
              #                    free s4
              #                    free s1
              #                     142  temp_33_ele_of_*buf_0_30_0 = load temp_32_ptr_of_*buf_0_30:ptr->i32 
              #                    occupy s1 with temp_32_ptr_of_*buf_0_30
              #                    occupy s5 with temp_33_ele_of_*buf_0_30_0
    lw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                     143  mu buf_0_4:142 
              #                     145  temp_34_ptr_of_*buf_0_30 = GEP *buf_0:Array:i32:[None, Some(100_0)] [Some(0_0), Some(i_19_1)] 
              #                    occupy s6 with temp_34_ptr_of_*buf_0_30
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     s6,s6,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with i_19_1
    mv      s7, a5
              #                    free a5
              #                    occupy a5 with i_19_1
              #                    store to i_19_1 in mem offset legal
    sw      a5,212(sp)
              #                    release a5 with i_19_1
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy a5 with *buf_0
              #                       load label buf as ptr to reg
    la      a5, buf
              #                    occupy reg a5 with *buf_0
    add     s6,s6,a5
              #                    free a5
              #                    free s6
              #                     147  temp_35_ele_of_*buf_0_30_0 = load temp_34_ptr_of_*buf_0_30:ptr->i32 
              #                    occupy s6 with temp_34_ptr_of_*buf_0_30
              #                    occupy a5 with temp_35_ele_of_*buf_0_30_0
    lw      a5,0(s6)
              #                    free a5
              #                    occupy a5 with temp_35_ele_of_*buf_0_30_0
              #                    store to temp_35_ele_of_*buf_0_30_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_35_ele_of_*buf_0_30_0
              #                    free s6
              #                     148  mu buf_0_4:147 
              #                     150  temp_36_cmp_30_0 = icmp i32 Slt temp_35_ele_of_*buf_0_30_0, temp_33_ele_of_*buf_0_30_0 
              #                    occupy a5 with temp_35_ele_of_*buf_0_30_0
              #                    load from temp_35_ele_of_*buf_0_30_0 in mem


    lw      a5,4(sp)
              #                    occupy s5 with temp_33_ele_of_*buf_0_30_0
              #                    occupy s7 with temp_36_cmp_30_0
    slt     s7,a5,s5
              #                    free a5
              #                    occupy a5 with temp_35_ele_of_*buf_0_30_0
              #                    store to temp_35_ele_of_*buf_0_30_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_35_ele_of_*buf_0_30_0
              #                    free s5
              #                    occupy s5 with temp_33_ele_of_*buf_0_30_0
              #                    store to temp_33_ele_of_*buf_0_30_0 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_33_ele_of_*buf_0_30_0
              #                    free s7
              #                     153  br i1 temp_36_cmp_30_0, label branch_true_31, label branch_false_31 
              #                    occupy s7 with temp_36_cmp_30_0
              #                    free s7
              #                    occupy s7 with temp_36_cmp_30_0
    bnez    s7, .branch_true_31
              #                    free s7
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: temp_27_cmp_27_0, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: temp_28_cmp_27_0, tracked: true } |     s1:Freed { symidx: temp_32_ptr_of_*buf_0_30, tracked: true } |     s6:Freed { symidx: temp_34_ptr_of_*buf_0_30, tracked: true } |     s7:Freed { symidx: temp_36_cmp_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     151  label branch_true_31: 
.branch_true_31:
              #                     297  untrack temp_33_ele_of_*buf_0_30_0 
              #                     296  untrack temp_14_arithop_41_0 
              #                     295  untrack temp_9_arithop_47_0 
              #                     294  untrack temp_31_cmp_51_0 
              #                     293  untrack i_19_2 
              #                     292  untrack temp_13_ele_of_*buf_0_41_0 
              #                     291  untrack temp_5_arithop_53_0 
              #                     290  untrack temp_19_arithop_35_0 
              #                     289  untrack temp_3_ptr_of_*buf_0_53 
              #                     288  untrack l_17_1 
              #                     287  untrack temp_36_cmp_30_0 
              #                    occupy s7 with temp_36_cmp_30_0
              #                    release s7 with temp_36_cmp_30_0
              #                     286  untrack temp_27_cmp_27_0 
              #                    occupy a2 with temp_27_cmp_27_0
              #                    release a2 with temp_27_cmp_27_0
              #                     285  untrack temp_32_ptr_of_*buf_0_30 
              #                    occupy s1 with temp_32_ptr_of_*buf_0_30
              #                    release s1 with temp_32_ptr_of_*buf_0_30
              #                     284  untrack temp_8_ele_of_*buf_0_47_0 
              #                     283  untrack temp_15_arithop_41_0 
              #                     282  untrack temp_30_cmp_45_0 
              #                     281  untrack temp_7_ptr_of_*buf_0_47 
              #                     280  untrack temp_4_ele_of_*buf_0_53_0 
              #                     279  untrack temp_11_ptr_of_*buf_0_41 
              #                     278  untrack temp_29_cmp_39_0 
              #                     277  untrack temp_6_ptr_of_*buf_0_47 
              #                     276  untrack temp_10_arithop_47_0 
              #                     275  untrack k_19_2 
              #                     274  untrack k_19_4 
              #                     273  untrack temp_28_cmp_27_0 
              #                    occupy a7 with temp_28_cmp_27_0
              #                    release a7 with temp_28_cmp_27_0
              #                     272  untrack temp_2_ptr_of_*buf_0_53 
              #                     271  untrack temp_12_ptr_of_*buf_0_41 
              #                     270  untrack temp_34_ptr_of_*buf_0_30 
              #                    occupy s6 with temp_34_ptr_of_*buf_0_30
              #                    release s6 with temp_34_ptr_of_*buf_0_30
              #                     269  untrack temp_16_ptr_of_*buf_0_35 
              #                     268  untrack j_19_2 
              #                     92   temp_21_ptr_of_*buf_0_32 = GEP *buf_0:ptr->Array:i32:[Some(100_0)] [Some(1_0), Some(k_19_1)] 
              #                    occupy a2 with temp_21_ptr_of_*buf_0_32
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 100
    add     a2,a2,a5
              #                    free a5
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with k_19_1
    mv      a7, a1
              #                    free a1
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
              #                    occupy s1 with *buf_0
              #                       load label buf as ptr to reg
    la      s1, buf
              #                    occupy reg s1 with *buf_0
    add     a2,a2,s1
              #                    free s1
              #                    free a2
              #                     94   (nop) 
              #                     96   (nop) 
              #                     97   mu buf_0_4:96 
              #                     98   store temp_35_ele_of_*buf_0_30_0:i32 temp_21_ptr_of_*buf_0_32:ptr->i32 
              #                    occupy a2 with temp_21_ptr_of_*buf_0_32
              #                    occupy s2 with temp_35_ele_of_*buf_0_30_0
              #                    load from temp_35_ele_of_*buf_0_30_0 in mem


    lw      s2,4(sp)
    sw      s2,0(a2)
              #                    free s2
              #                    free a2
              #                     299  untrack temp_21_ptr_of_*buf_0_32 
              #                    occupy a2 with temp_21_ptr_of_*buf_0_32
              #                    release a2 with temp_21_ptr_of_*buf_0_32
              #                     298  untrack temp_35_ele_of_*buf_0_30_0 
              #                    occupy s2 with temp_35_ele_of_*buf_0_30_0
              #                    release s2 with temp_35_ele_of_*buf_0_30_0
              #                     99   buf_0_11 = chi buf_0_4:98 
              #                     101  temp_24_arithop_32_0 = Add i32 i_19_1, 1_0 
              #                    occupy a2 with i_19_1
              #                    load from i_19_1 in mem


    lw      a2,212(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_24_arithop_32_0
    ADDW    s3,a2,s2
              #                    free a2
              #                    occupy a2 with i_19_1
              #                    store to i_19_1 in mem offset legal
    sw      a2,212(sp)
              #                    release a2 with i_19_1
              #                    free s2
              #                    free s3
              #                     102  (nop) 
              #                     206  i_19_5 = i32 temp_24_arithop_32_0 
              #                    occupy s3 with temp_24_arithop_32_0
              #                    occupy a2 with i_19_5
    mv      a2, s3
              #                    free s3
              #                    occupy s3 with temp_24_arithop_32_0
              #                    store to temp_24_arithop_32_0 in mem offset legal
    sw      s3,44(sp)
              #                    release s3 with temp_24_arithop_32_0
              #                    free a2
              #                     300  untrack temp_24_arithop_32_0 
              #                     207  j_19_4 = i32 j_19_1 
              #                    occupy a4 with j_19_1
              #                    occupy s3 with j_19_4
    mv      s3, a4
              #                    free a4
              #                    occupy a4 with j_19_1
              #                    store to j_19_1 in mem offset legal
    sw      a4,200(sp)
              #                    release a4 with j_19_1
              #                    free s3
              #                          jump label: gather_10 
    j       .gather_10
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: i_19_5, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     s3:Freed { symidx: j_19_4, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     154  label gather_10: 
.gather_10:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: i_19_5, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     s3:Freed { symidx: j_19_4, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     89   temp_20_arithop_29_0 = Add i32 k_19_1, 1_0 
              #                    occupy a1 with k_19_1
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_20_arithop_29_0
    ADDW    a5,a1,a4
              #                    free a1
              #                    occupy a1 with k_19_1
              #                    store to k_19_1 in mem offset legal
    sw      a1,184(sp)
              #                    release a1 with k_19_1
              #                    free a4
              #                    free a5
              #                     90   (nop) 
              #                     208  i_19_1 = i32 i_19_5 
              #                    occupy a2 with i_19_5
              #                    occupy a1 with i_19_1
    mv      a1, a2
              #                    free a2
              #                    occupy a2 with i_19_5
              #                    store to i_19_5 in mem offset legal
    sw      a2,204(sp)
              #                    release a2 with i_19_5
              #                    free a1
              #                     209  k_19_1 = i32 temp_20_arithop_29_0 
              #                    occupy a5 with temp_20_arithop_29_0
              #                    occupy a2 with k_19_1
    mv      a2, a5
              #                    free a5
              #                    occupy a5 with temp_20_arithop_29_0
              #                    store to temp_20_arithop_29_0 in mem offset legal
    sw      a5,64(sp)
              #                    release a5 with temp_20_arithop_29_0
              #                    free a2
              #                     210  j_19_1 = i32 j_19_4 
              #                    occupy s3 with j_19_4
              #                    occupy a4 with j_19_1
    mv      a4, s3
              #                    free s3
              #                    occupy s3 with j_19_4
              #                    store to j_19_4 in mem offset legal
    sw      s3,192(sp)
              #                    release s3 with j_19_4
              #                    free a4
              #                          jump label: while.head_28 
              #                    occupy a1 with i_19_1
              #                    store to i_19_1 in mem offset legal
    sw      a1,212(sp)
              #                    release a1 with i_19_1
              #                    occupy a2 with k_19_1
              #                    store to k_19_1 in mem offset legal
    sw      a2,184(sp)
              #                    release a2 with k_19_1
              #                    occupy a1 with k_19_1
              #                    load from k_19_1 in mem


    lw      a1,184(sp)
              #                    occupy a5 with i_19_1
              #                    load from i_19_1 in mem


    lw      a5,212(sp)
              #                    occupy a6 with r_17_0
              #                    store to r_17_0 in mem offset legal
    sw      a6,228(sp)
              #                    release a6 with r_17_0
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: temp_27_cmp_27_0, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: temp_28_cmp_27_0, tracked: true } |     s1:Freed { symidx: temp_32_ptr_of_*buf_0_30, tracked: true } |     s6:Freed { symidx: temp_34_ptr_of_*buf_0_30, tracked: true } |     s7:Freed { symidx: temp_36_cmp_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     152  label branch_false_31: 
.branch_false_31:
              #                     77   temp_16_ptr_of_*buf_0_35 = GEP *buf_0:ptr->Array:i32:[Some(100_0)] [Some(1_0), Some(k_19_1)] 
              #                    occupy a5 with temp_16_ptr_of_*buf_0_35
    li      a5, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 100
    add     a5,a5,s2
              #                    free s2
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with k_19_1
    mv      s2, a1
              #                    free a1
              #                    occupy a1 with k_19_1
              #                    store to k_19_1 in mem offset legal
    sw      a1,184(sp)
              #                    release a1 with k_19_1
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
              #                    occupy a1 with *buf_0
              #                       load label buf as ptr to reg
    la      a1, buf
              #                    occupy reg a1 with *buf_0
    add     a5,a5,a1
              #                    free a1
              #                    free a5
              #                     79   (nop) 
              #                     81   (nop) 
              #                     82   mu buf_0_4:81 
              #                     83   store temp_33_ele_of_*buf_0_30_0:i32 temp_16_ptr_of_*buf_0_35:ptr->i32 
              #                    occupy a5 with temp_16_ptr_of_*buf_0_35
              #                    occupy a1 with temp_33_ele_of_*buf_0_30_0
              #                    load from temp_33_ele_of_*buf_0_30_0 in mem


    lw      a1,20(sp)
    sw      a1,0(a5)
              #                    free a1
              #                    occupy a1 with temp_33_ele_of_*buf_0_30_0
              #                    store to temp_33_ele_of_*buf_0_30_0 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_33_ele_of_*buf_0_30_0
              #                    free a5
              #                     84   buf_0_13 = chi buf_0_4:83 
              #                     86   temp_19_arithop_35_0 = Add i32 j_19_1, 1_0 
              #                    occupy a4 with j_19_1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s2 with temp_19_arithop_35_0
    ADDW    s2,a4,a1
              #                    free a4
              #                    occupy a4 with j_19_1
              #                    store to j_19_1 in mem offset legal
    sw      a4,200(sp)
              #                    release a4 with j_19_1
              #                    free a1
              #                    free s2
              #                     87   (nop) 
              #                     211  i_19_5 = i32 i_19_1 
              #                    occupy a1 with i_19_1
              #                    load from i_19_1 in mem


    lw      a1,212(sp)
              #                    occupy a4 with i_19_5
    mv      a4, a1
              #                    free a1
              #                    occupy a1 with i_19_1
              #                    store to i_19_1 in mem offset legal
    sw      a1,212(sp)
              #                    release a1 with i_19_1
              #                    free a4
              #                    occupy a4 with i_19_5
              #                    store to i_19_5 in mem offset legal
    sw      a4,204(sp)
              #                    release a4 with i_19_5
              #                     212  j_19_4 = i32 temp_19_arithop_35_0 
              #                    occupy s2 with temp_19_arithop_35_0
              #                    occupy a1 with j_19_4
    mv      a1, s2
              #                    free s2
              #                    occupy s2 with temp_19_arithop_35_0
              #                    store to temp_19_arithop_35_0 in mem offset legal
    sw      s2,68(sp)
              #                    release s2 with temp_19_arithop_35_0
              #                    free a1
              #                          jump label: gather_10 
              #                    occupy s1 with temp_32_ptr_of_*buf_0_30
              #                    store to temp_32_ptr_of_*buf_0_30 in mem offset legal
    sd      s1,24(sp)
              #                    release s1 with temp_32_ptr_of_*buf_0_30
              #                    occupy a1 with j_19_4
              #                    store to j_19_4 in mem offset legal
    sw      a1,192(sp)
              #                    release a1 with j_19_4
              #                    occupy s3 with j_19_4
              #                    load from j_19_4 in mem


    lw      s3,192(sp)
              #                    occupy a1 with k_19_1
              #                    load from k_19_1 in mem


    lw      a1,184(sp)
              #                    occupy a5 with temp_16_ptr_of_*buf_0_35
              #                    store to temp_16_ptr_of_*buf_0_35 in mem offset legal
    sd      a5,80(sp)
              #                    release a5 with temp_16_ptr_of_*buf_0_35
              #                    occupy s7 with temp_36_cmp_30_0
              #                    store to temp_36_cmp_30_0 in mem offset legal
    sb      s7,3(sp)
              #                    release s7 with temp_36_cmp_30_0
              #                    occupy s6 with temp_34_ptr_of_*buf_0_30
              #                    store to temp_34_ptr_of_*buf_0_30 in mem offset legal
    sd      s6,8(sp)
              #                    release s6 with temp_34_ptr_of_*buf_0_30
              #                    occupy a7 with temp_28_cmp_27_0
              #                    store to temp_28_cmp_27_0 in mem offset legal
    sb      a7,37(sp)
              #                    release a7 with temp_28_cmp_27_0
              #                    occupy a2 with temp_27_cmp_27_0
              #                    store to temp_27_cmp_27_0 in mem offset legal
    sb      a2,38(sp)
              #                    release a2 with temp_27_cmp_27_0
              #                    occupy a2 with i_19_5
              #                    load from i_19_5 in mem


    lw      a2,204(sp)
    j       .gather_10
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: temp_27_cmp_27_0, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: temp_28_cmp_27_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     200  label UP_23_0: 
.UP_23_0:
              #                     267  untrack temp_20_arithop_29_0 
              #                     266  untrack temp_36_cmp_30_0 
              #                     265  untrack temp_19_arithop_35_0 
              #                     264  untrack temp_24_arithop_32_0 
              #                     263  untrack temp_28_cmp_27_0 
              #                    occupy a7 with temp_28_cmp_27_0
              #                    release a7 with temp_28_cmp_27_0
              #                     262  untrack temp_32_ptr_of_*buf_0_30 
              #                     261  untrack temp_34_ptr_of_*buf_0_30 
              #                     260  untrack temp_33_ele_of_*buf_0_30_0 
              #                     259  untrack temp_35_ele_of_*buf_0_30_0 
              #                     258  untrack temp_16_ptr_of_*buf_0_35 
              #                     257  untrack i_19_5 
              #                     256  untrack temp_21_ptr_of_*buf_0_32 
              #                     255  untrack j_19_4 
              #                     254  untrack temp_27_cmp_27_0 
              #                    occupy a2 with temp_27_cmp_27_0
              #                    release a2 with temp_27_cmp_27_0
              #                     213  k_19_2 = i32 k_19_1 
              #                    occupy a1 with k_19_1
              #                    occupy a2 with k_19_2
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     214  i_19_2 = i32 i_19_1 
              #                    occupy a5 with i_19_1
              #                    occupy a7 with i_19_2
    mv      a7, a5
              #                    free a5
              #                    free a7
              #                          jump label: branch_short_circuit_c_false_236 
    j       .branch_short_circuit_c_false_236
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: k_19_2, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: i_19_2, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     117  label branch_short_circuit_c_false_236: 
.branch_short_circuit_c_false_236:
              #                     124  temp_29_cmp_39_0 = icmp i32 Slt i_19_2, temp_1_arithop_19_0 
              #                    occupy a7 with i_19_2
              #                    occupy a3 with temp_1_arithop_19_0
              #                    occupy s1 with temp_29_cmp_39_0
    slt     s1,a7,a3
              #                    free a7
              #                    free a3
              #                    free s1
              #                     127  br i1 temp_29_cmp_39_0, label while.body_40, label UP_24_0 
              #                    occupy s1 with temp_29_cmp_39_0
              #                    free s1
              #                    occupy s1 with temp_29_cmp_39_0
    bnez    s1, .while.body_40
              #                    free s1
    j       .UP_24_0
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: k_19_2, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: i_19_2, tracked: true } |     s1:Freed { symidx: temp_29_cmp_39_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     125  label while.body_40: 
.while.body_40:
              #                     62   temp_11_ptr_of_*buf_0_41 = GEP *buf_0:ptr->Array:i32:[Some(100_0)] [Some(1_0), Some(k_19_2)] 
              #                    occupy s2 with temp_11_ptr_of_*buf_0_41
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 100
    add     s2,s2,s3
              #                    free s3
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with k_19_2
    mv      s4, a2
              #                    free a2
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
              #                    occupy s5 with *buf_0
              #                       load label buf as ptr to reg
    la      s5, buf
              #                    occupy reg s5 with *buf_0
    add     s2,s2,s5
              #                    free s5
              #                    free s2
              #                     64   temp_12_ptr_of_*buf_0_41 = GEP *buf_0:Array:i32:[None, Some(100_0)] [Some(0_0), Some(i_19_2)] 
              #                    occupy s6 with temp_12_ptr_of_*buf_0_41
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     s6,s6,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with i_19_2
    mv      s7, a7
              #                    free a7
              #                    occupy a7 with i_19_2
              #                    store to i_19_2 in mem offset legal
    sw      a7,208(sp)
              #                    release a7 with i_19_2
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy a7 with *buf_0
              #                       load label buf as ptr to reg
    la      a7, buf
              #                    occupy reg a7 with *buf_0
    add     s6,s6,a7
              #                    free a7
              #                    free s6
              #                     66   temp_13_ele_of_*buf_0_41_0 = load temp_12_ptr_of_*buf_0_41:ptr->i32 
              #                    occupy s6 with temp_12_ptr_of_*buf_0_41
              #                    occupy a7 with temp_13_ele_of_*buf_0_41_0
    lw      a7,0(s6)
              #                    free a7
              #                    occupy a7 with temp_13_ele_of_*buf_0_41_0
              #                    store to temp_13_ele_of_*buf_0_41_0 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with temp_13_ele_of_*buf_0_41_0
              #                    free s6
              #                     67   mu buf_0_5:66 
              #                     68   store temp_13_ele_of_*buf_0_41_0:i32 temp_11_ptr_of_*buf_0_41:ptr->i32 
              #                    occupy s2 with temp_11_ptr_of_*buf_0_41
              #                    occupy a7 with temp_13_ele_of_*buf_0_41_0
              #                    load from temp_13_ele_of_*buf_0_41_0 in mem


    lw      a7,100(sp)
    sw      a7,0(s2)
              #                    free a7
              #                    occupy a7 with temp_13_ele_of_*buf_0_41_0
              #                    store to temp_13_ele_of_*buf_0_41_0 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with temp_13_ele_of_*buf_0_41_0
              #                    free s2
              #                     69   buf_0_6 = chi buf_0_5:68 
              #                     71   temp_14_arithop_41_0 = Add i32 i_19_2, 1_0 
              #                    occupy a7 with i_19_2
              #                    load from i_19_2 in mem


    lw      a7,208(sp)
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with temp_14_arithop_41_0
    ADDW    s8,a7,s7
              #                    free a7
              #                    occupy a7 with i_19_2
              #                    store to i_19_2 in mem offset legal
    sw      a7,208(sp)
              #                    release a7 with i_19_2
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_14_arithop_41_0
              #                    store to temp_14_arithop_41_0 in mem offset legal
    sw      s8,96(sp)
              #                    release s8 with temp_14_arithop_41_0
              #                     72   (nop) 
              #                     74   temp_15_arithop_41_0 = Add i32 k_19_2, 1_0 
              #                    occupy a2 with k_19_2
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s7 with temp_15_arithop_41_0
    ADDW    s7,a2,a7
              #                    free a2
              #                    occupy a2 with k_19_2
              #                    store to k_19_2 in mem offset legal
    sw      a2,180(sp)
              #                    release a2 with k_19_2
              #                    free a7
              #                    free s7
              #                     75   (nop) 
              #                     215  k_19_2 = i32 temp_15_arithop_41_0 
              #                    occupy s7 with temp_15_arithop_41_0
              #                    occupy a2 with k_19_2
    mv      a2, s7
              #                    free s7
              #                    occupy s7 with temp_15_arithop_41_0
              #                    store to temp_15_arithop_41_0 in mem offset legal
    sw      s7,92(sp)
              #                    release s7 with temp_15_arithop_41_0
              #                    free a2
              #                     216  i_19_2 = i32 temp_14_arithop_41_0 
              #                    occupy a7 with temp_14_arithop_41_0
              #                    load from temp_14_arithop_41_0 in mem


    lw      a7,96(sp)
              #                    occupy s7 with i_19_2
    mv      s7, a7
              #                    free a7
              #                    occupy a7 with temp_14_arithop_41_0
              #                    store to temp_14_arithop_41_0 in mem offset legal
    sw      a7,96(sp)
              #                    release a7 with temp_14_arithop_41_0
              #                    free s7
              #                    occupy s7 with i_19_2
              #                    store to i_19_2 in mem offset legal
    sw      s7,208(sp)
              #                    release s7 with i_19_2
              #                          jump label: branch_short_circuit_c_false_236 
              #                    occupy s1 with temp_29_cmp_39_0
              #                    store to temp_29_cmp_39_0 in mem offset legal
    sb      s1,36(sp)
              #                    release s1 with temp_29_cmp_39_0
              #                    occupy s6 with temp_12_ptr_of_*buf_0_41
              #                    store to temp_12_ptr_of_*buf_0_41 in mem offset legal
    sd      s6,104(sp)
              #                    release s6 with temp_12_ptr_of_*buf_0_41
              #                    occupy a7 with i_19_2
              #                    load from i_19_2 in mem


    lw      a7,208(sp)
              #                    occupy s2 with temp_11_ptr_of_*buf_0_41
              #                    store to temp_11_ptr_of_*buf_0_41 in mem offset legal
    sd      s2,112(sp)
              #                    release s2 with temp_11_ptr_of_*buf_0_41
    j       .branch_short_circuit_c_false_236
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: k_19_2, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: i_19_2, tracked: true } |     s1:Freed { symidx: temp_29_cmp_39_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     201  label UP_24_0: 
.UP_24_0:
              #                     307  untrack temp_14_arithop_41_0 
              #                     306  untrack temp_13_ele_of_*buf_0_41_0 
              #                     305  untrack temp_15_arithop_41_0 
              #                     304  untrack temp_11_ptr_of_*buf_0_41 
              #                     303  untrack i_19_2 
              #                    occupy a7 with i_19_2
              #                    release a7 with i_19_2
              #                     302  untrack temp_12_ptr_of_*buf_0_41 
              #                     301  untrack temp_29_cmp_39_0 
              #                    occupy s1 with temp_29_cmp_39_0
              #                    release s1 with temp_29_cmp_39_0
              #                     217  k_19_4 = i32 k_19_2 
              #                    occupy a2 with k_19_2
              #                    occupy a7 with k_19_4
    mv      a7, a2
              #                    free a2
              #                    free a7
              #                     308  untrack k_19_2 
              #                    occupy a2 with k_19_2
              #                    release a2 with k_19_2
              #                     218  j_19_2 = i32 j_19_1 
              #                    occupy a4 with j_19_1
              #                    occupy a2 with j_19_2
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.exit_40 
    j       .while.exit_40
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: j_19_2, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: k_19_4, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     126  label while.exit_40: 
.while.exit_40:
              #                     129  temp_30_cmp_45_0 = icmp i32 Slt j_19_2, r_17_0 
              #                    occupy a2 with j_19_2
              #                    occupy a6 with r_17_0
              #                    occupy s1 with temp_30_cmp_45_0
    slt     s1,a2,a6
              #                    free a2
              #                    free a6
              #                    free s1
              #                     132  br i1 temp_30_cmp_45_0, label while.body_46, label UP_25_0 
              #                    occupy s1 with temp_30_cmp_45_0
              #                    free s1
              #                    occupy s1 with temp_30_cmp_45_0
    bnez    s1, .while.body_46
              #                    free s1
    j       .UP_25_0
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: j_19_2, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: k_19_4, tracked: true } |     s1:Freed { symidx: temp_30_cmp_45_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     130  label while.body_46: 
.while.body_46:
              #                     47   temp_6_ptr_of_*buf_0_47 = GEP *buf_0:ptr->Array:i32:[Some(100_0)] [Some(1_0), Some(k_19_4)] 
              #                    occupy s2 with temp_6_ptr_of_*buf_0_47
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 100
    add     s2,s2,s3
              #                    free s3
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with k_19_4
    mv      s4, a7
              #                    free a7
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
              #                    occupy s5 with *buf_0
              #                       load label buf as ptr to reg
    la      s5, buf
              #                    occupy reg s5 with *buf_0
    add     s2,s2,s5
              #                    free s5
              #                    free s2
              #                     49   temp_7_ptr_of_*buf_0_47 = GEP *buf_0:Array:i32:[None, Some(100_0)] [Some(0_0), Some(j_19_2)] 
              #                    occupy s6 with temp_7_ptr_of_*buf_0_47
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     s6,s6,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with j_19_2
    mv      s7, a2
              #                    free a2
              #                    occupy a2 with j_19_2
              #                    store to j_19_2 in mem offset legal
    sw      a2,196(sp)
              #                    release a2 with j_19_2
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy a2 with *buf_0
              #                       load label buf as ptr to reg
    la      a2, buf
              #                    occupy reg a2 with *buf_0
    add     s6,s6,a2
              #                    free a2
              #                    free s6
              #                     51   temp_8_ele_of_*buf_0_47_0 = load temp_7_ptr_of_*buf_0_47:ptr->i32 
              #                    occupy s6 with temp_7_ptr_of_*buf_0_47
              #                    occupy a2 with temp_8_ele_of_*buf_0_47_0
    lw      a2,0(s6)
              #                    free a2
              #                    occupy a2 with temp_8_ele_of_*buf_0_47_0
              #                    store to temp_8_ele_of_*buf_0_47_0 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with temp_8_ele_of_*buf_0_47_0
              #                    free s6
              #                     52   mu buf_0_7:51 
              #                     53   store temp_8_ele_of_*buf_0_47_0:i32 temp_6_ptr_of_*buf_0_47:ptr->i32 
              #                    occupy s2 with temp_6_ptr_of_*buf_0_47
              #                    occupy a2 with temp_8_ele_of_*buf_0_47_0
              #                    load from temp_8_ele_of_*buf_0_47_0 in mem


    lw      a2,132(sp)
    sw      a2,0(s2)
              #                    free a2
              #                    occupy a2 with temp_8_ele_of_*buf_0_47_0
              #                    store to temp_8_ele_of_*buf_0_47_0 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with temp_8_ele_of_*buf_0_47_0
              #                    free s2
              #                     54   buf_0_8 = chi buf_0_7:53 
              #                     56   temp_9_arithop_47_0 = Add i32 j_19_2, 1_0 
              #                    occupy a2 with j_19_2
              #                    load from j_19_2 in mem


    lw      a2,196(sp)
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with temp_9_arithop_47_0
    ADDW    s8,a2,s7
              #                    free a2
              #                    occupy a2 with j_19_2
              #                    store to j_19_2 in mem offset legal
    sw      a2,196(sp)
              #                    release a2 with j_19_2
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_9_arithop_47_0
              #                    store to temp_9_arithop_47_0 in mem offset legal
    sw      s8,128(sp)
              #                    release s8 with temp_9_arithop_47_0
              #                     57   (nop) 
              #                     59   temp_10_arithop_47_0 = Add i32 k_19_4, 1_0 
              #                    occupy a7 with k_19_4
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy s7 with temp_10_arithop_47_0
    ADDW    s7,a7,a2
              #                    free a7
              #                    occupy a7 with k_19_4
              #                    store to k_19_4 in mem offset legal
    sw      a7,176(sp)
              #                    release a7 with k_19_4
              #                    free a2
              #                    free s7
              #                     60   (nop) 
              #                     219  j_19_2 = i32 temp_9_arithop_47_0 
              #                    occupy a2 with temp_9_arithop_47_0
              #                    load from temp_9_arithop_47_0 in mem


    lw      a2,128(sp)
              #                    occupy a7 with j_19_2
    mv      a7, a2
              #                    free a2
              #                    occupy a2 with temp_9_arithop_47_0
              #                    store to temp_9_arithop_47_0 in mem offset legal
    sw      a2,128(sp)
              #                    release a2 with temp_9_arithop_47_0
              #                    free a7
              #                    occupy a7 with j_19_2
              #                    store to j_19_2 in mem offset legal
    sw      a7,196(sp)
              #                    release a7 with j_19_2
              #                     220  k_19_4 = i32 temp_10_arithop_47_0 
              #                    occupy s7 with temp_10_arithop_47_0
              #                    occupy a2 with k_19_4
    mv      a2, s7
              #                    free s7
              #                    occupy s7 with temp_10_arithop_47_0
              #                    store to temp_10_arithop_47_0 in mem offset legal
    sw      s7,124(sp)
              #                    release s7 with temp_10_arithop_47_0
              #                    free a2
              #                          jump label: while.exit_40 
              #                    occupy s1 with temp_30_cmp_45_0
              #                    store to temp_30_cmp_45_0 in mem offset legal
    sb      s1,35(sp)
              #                    release s1 with temp_30_cmp_45_0
              #                    occupy s6 with temp_7_ptr_of_*buf_0_47
              #                    store to temp_7_ptr_of_*buf_0_47 in mem offset legal
    sd      s6,136(sp)
              #                    release s6 with temp_7_ptr_of_*buf_0_47
              #                    occupy a2 with k_19_4
              #                    store to k_19_4 in mem offset legal
    sw      a2,176(sp)
              #                    release a2 with k_19_4
              #                    occupy a7 with k_19_4
              #                    load from k_19_4 in mem


    lw      a7,176(sp)
              #                    occupy a2 with j_19_2
              #                    load from j_19_2 in mem


    lw      a2,196(sp)
              #                    occupy s2 with temp_6_ptr_of_*buf_0_47
              #                    store to temp_6_ptr_of_*buf_0_47 in mem offset legal
    sd      s2,144(sp)
              #                    release s2 with temp_6_ptr_of_*buf_0_47
    j       .while.exit_40
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: j_19_2, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: k_19_4, tracked: true } |     s1:Freed { symidx: temp_30_cmp_45_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     202  label UP_25_0: 
.UP_25_0:
              #                     316  untrack k_19_4 
              #                    occupy a7 with k_19_4
              #                    release a7 with k_19_4
              #                     315  untrack temp_10_arithop_47_0 
              #                     314  untrack temp_9_arithop_47_0 
              #                     313  untrack temp_6_ptr_of_*buf_0_47 
              #                     312  untrack temp_8_ele_of_*buf_0_47_0 
              #                     311  untrack j_19_2 
              #                    occupy a2 with j_19_2
              #                    release a2 with j_19_2
              #                     310  untrack temp_30_cmp_45_0 
              #                    occupy s1 with temp_30_cmp_45_0
              #                    release s1 with temp_30_cmp_45_0
              #                     309  untrack temp_7_ptr_of_*buf_0_47 
              #                     221  l_17_1 = i32 l_17_0 
              #                    occupy a0 with l_17_0
              #                    occupy a2 with l_17_1
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: while.exit_46 
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: l_17_1, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     131  label while.exit_46: 
.while.exit_46:
              #                     134  temp_31_cmp_51_0 = icmp i32 Slt l_17_1, r_17_0 
              #                    occupy a2 with l_17_1
              #                    occupy a6 with r_17_0
              #                    occupy a7 with temp_31_cmp_51_0
    slt     a7,a2,a6
              #                    free a2
              #                    free a6
              #                    free a7
              #                     137  br i1 temp_31_cmp_51_0, label while.body_52, label while.exit_52 
              #                    occupy a7 with temp_31_cmp_51_0
              #                    free a7
              #                    occupy a7 with temp_31_cmp_51_0
    bnez    a7, .while.body_52
              #                    free a7
    j       .while.exit_52
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: l_17_1, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: temp_31_cmp_51_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     135  label while.body_52: 
.while.body_52:
              #                     35   temp_2_ptr_of_*buf_0_53 = GEP *buf_0:ptr->Array:i32:[Some(100_0)] [Some(0_0), Some(l_17_1)] 
              #                    occupy s1 with temp_2_ptr_of_*buf_0_53
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 0
    add     s1,s1,s2
              #                    free s2
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with l_17_1
    mv      s3, a2
              #                    free a2
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy s4 with *buf_0
              #                       load label buf as ptr to reg
    la      s4, buf
              #                    occupy reg s4 with *buf_0
    add     s1,s1,s4
              #                    free s4
              #                    free s1
              #                     37   temp_3_ptr_of_*buf_0_53 = GEP *buf_0:Array:i32:[None, Some(100_0)] [Some(1_0), Some(l_17_1)] 
              #                    occupy s5 with temp_3_ptr_of_*buf_0_53
    li      s5, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 100
    add     s5,s5,s6
              #                    free s6
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with l_17_1
    mv      s6, a2
              #                    free a2
              #                    occupy a2 with l_17_1
              #                    store to l_17_1 in mem offset legal
    sw      a2,232(sp)
              #                    release a2 with l_17_1
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a2 with *buf_0
              #                       load label buf as ptr to reg
    la      a2, buf
              #                    occupy reg a2 with *buf_0
    add     s5,s5,a2
              #                    free a2
              #                    free s5
              #                     39   temp_4_ele_of_*buf_0_53_0 = load temp_3_ptr_of_*buf_0_53:ptr->i32 
              #                    occupy s5 with temp_3_ptr_of_*buf_0_53
              #                    occupy a2 with temp_4_ele_of_*buf_0_53_0
    lw      a2,0(s5)
              #                    free a2
              #                    occupy a2 with temp_4_ele_of_*buf_0_53_0
              #                    store to temp_4_ele_of_*buf_0_53_0 in mem offset legal
    sw      a2,156(sp)
              #                    release a2 with temp_4_ele_of_*buf_0_53_0
              #                    free s5
              #                     40   mu buf_0_9:39 
              #                     41   store temp_4_ele_of_*buf_0_53_0:i32 temp_2_ptr_of_*buf_0_53:ptr->i32 
              #                    occupy s1 with temp_2_ptr_of_*buf_0_53
              #                    occupy a2 with temp_4_ele_of_*buf_0_53_0
              #                    load from temp_4_ele_of_*buf_0_53_0 in mem


    lw      a2,156(sp)
    sw      a2,0(s1)
              #                    free a2
              #                    occupy a2 with temp_4_ele_of_*buf_0_53_0
              #                    store to temp_4_ele_of_*buf_0_53_0 in mem offset legal
    sw      a2,156(sp)
              #                    release a2 with temp_4_ele_of_*buf_0_53_0
              #                    free s1
              #                     42   buf_0_10 = chi buf_0_9:41 
              #                     44   temp_5_arithop_53_0 = Add i32 l_17_1, 1_0 
              #                    occupy a2 with l_17_1
              #                    load from l_17_1 in mem


    lw      a2,232(sp)
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with temp_5_arithop_53_0
    ADDW    s8,a2,s7
              #                    free a2
              #                    occupy a2 with l_17_1
              #                    store to l_17_1 in mem offset legal
    sw      a2,232(sp)
              #                    release a2 with l_17_1
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_5_arithop_53_0
              #                    store to temp_5_arithop_53_0 in mem offset legal
    sw      s8,152(sp)
              #                    release s8 with temp_5_arithop_53_0
              #                     45   (nop) 
              #                     222  l_17_1 = i32 temp_5_arithop_53_0 
              #                    occupy a2 with temp_5_arithop_53_0
              #                    load from temp_5_arithop_53_0 in mem


    lw      a2,152(sp)
              #                    occupy s7 with l_17_1
    mv      s7, a2
              #                    free a2
              #                    occupy a2 with temp_5_arithop_53_0
              #                    store to temp_5_arithop_53_0 in mem offset legal
    sw      a2,152(sp)
              #                    release a2 with temp_5_arithop_53_0
              #                    free s7
              #                    occupy s7 with l_17_1
              #                    store to l_17_1 in mem offset legal
    sw      s7,232(sp)
              #                    release s7 with l_17_1
              #                          jump label: while.exit_46 
              #                    occupy s1 with temp_2_ptr_of_*buf_0_53
              #                    store to temp_2_ptr_of_*buf_0_53 in mem offset legal
    sd      s1,168(sp)
              #                    release s1 with temp_2_ptr_of_*buf_0_53
              #                    occupy s5 with temp_3_ptr_of_*buf_0_53
              #                    store to temp_3_ptr_of_*buf_0_53 in mem offset legal
    sd      s5,160(sp)
              #                    release s5 with temp_3_ptr_of_*buf_0_53
              #                    occupy a7 with temp_31_cmp_51_0
              #                    store to temp_31_cmp_51_0 in mem offset legal
    sb      a7,34(sp)
              #                    release a7 with temp_31_cmp_51_0
              #                    occupy a2 with l_17_1
              #                    load from l_17_1 in mem


    lw      a2,232(sp)
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: l_17_1, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |     a6:Freed { symidx: r_17_0, tracked: true } |     a7:Freed { symidx: temp_31_cmp_51_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     136  label while.exit_52: 
.while.exit_52:
              #                     317  untrack r_17_0 
              #                    occupy a6 with r_17_0
              #                    release a6 with r_17_0
              #                     175  mu buf_0_9:138 
              #                     138  ret 
              #                    load from ra_merge_sort_0 in mem
    ld      ra,248(sp)
              #                    load from s0_merge_sort_0 in mem
    ld      s0,240(sp)
    addi    sp,sp,256
    ret
              #                    regtab     a0:Freed { symidx: l_17_0, tracked: true } |     a1:Freed { symidx: k_19_1, tracked: true } |     a2:Freed { symidx: temp_27_cmp_27_0, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19_0, tracked: true } |     a4:Freed { symidx: j_19_1, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     199  label UP_20_0: 
.UP_20_0:
              #                     253  untrack temp_28_cmp_27_0 
              #                     252  untrack temp_34_ptr_of_*buf_0_30 
              #                     251  untrack temp_16_ptr_of_*buf_0_35 
              #                     250  untrack temp_21_ptr_of_*buf_0_32 
              #                     249  untrack i_19_5 
              #                     248  untrack temp_27_cmp_27_0 
              #                    occupy a2 with temp_27_cmp_27_0
              #                    release a2 with temp_27_cmp_27_0
              #                     247  untrack temp_36_cmp_30_0 
              #                     246  untrack temp_32_ptr_of_*buf_0_30 
              #                     245  untrack temp_35_ele_of_*buf_0_30_0 
              #                     244  untrack temp_20_arithop_29_0 
              #                     243  untrack temp_33_ele_of_*buf_0_30_0 
              #                     242  untrack j_19_4 
              #                     241  untrack temp_24_arithop_32_0 
              #                     240  untrack temp_19_arithop_35_0 
              #                     223  i_19_2 = i32 i_19_1 
              #                    occupy a5 with i_19_1
              #                    occupy a2 with i_19_2
    mv      a2, a5
              #                    free a5
              #                    free a2
              #                     224  k_19_2 = i32 k_19_1 
              #                    occupy a1 with k_19_1
              #                    occupy a6 with k_19_2
    mv      a6, a1
              #                    free a1
              #                    free a6
              #                          jump label: branch_short_circuit_c_false_236 
              #                    occupy a2 with i_19_2
              #                    store to i_19_2 in mem offset legal
    sw      a2,208(sp)
              #                    release a2 with i_19_2
              #                    occupy a7 with i_19_2
              #                    load from i_19_2 in mem


    lw      a7,208(sp)
              #                    occupy a6 with k_19_2
              #                    store to k_19_2 in mem offset legal
    sw      a6,180(sp)
              #                    release a6 with k_19_2
              #                    occupy a6 with r_17_0
              #                    load from r_17_0 in mem


    lw      a6,228(sp)
              #                    occupy a2 with k_19_2
              #                    load from k_19_2 in mem


    lw      a2,180(sp)
    j       .branch_short_circuit_c_false_236
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     19   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|temp_37_ptr_of_*buf_0:8 at 16|temp_38_ret_of_getarray _s57 _i0:4 at 12|none:4 at 8|temp_39_ptr_of_*buf_0:8 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     176  buf_0_14 = chi buf_0_0:19 
              #                     155  alloc ptr->i32 [temp_37_ptr_of_*buf_0_57] 
              #                     157  alloc i32 [temp_38_ret_of_getarray_57] 
              #                     160  alloc i32 [n_57] 
              #                     162  alloc ptr->i32 [temp_39_ptr_of_*buf_0_57] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     156  temp_37_ptr_of_*buf_0_57 = GEP *buf_0:Array:i32:[None, Some(100_0)] [Some(0_0)] 
              #                    occupy a0 with temp_37_ptr_of_*buf_0_57
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a2 with *buf_0
              #                       load label buf as ptr to reg
    la      a2, buf
              #                    occupy reg a2 with *buf_0
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     158  temp_38_ret_of_getarray_57_0 =  Call i32 getarray_0(temp_37_ptr_of_*buf_0_57) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_37_ptr_of_*buf_0_57
              #                    store to temp_37_ptr_of_*buf_0_57 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_37_ptr_of_*buf_0_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_37_ptr_of_*buf_0_57_0
              #                    load from temp_37_ptr_of_*buf_0_57 in mem
    ld      a0,16(sp)
              #                    arg load ended


    call    getarray
              #                     177  mu buf_0_14:158 
              #                     178  buf_0_15 = chi buf_0_14:158 
              #                     159  (nop) 
              #                     161   Call void merge_sort_0(0_0, temp_38_ret_of_getarray_57_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_38_ret_of_getarray_57_0
              #                    store to temp_38_ret_of_getarray_57_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_38_ret_of_getarray_57_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_38_ret_of_getarray_57_0_0
              #                    load from temp_38_ret_of_getarray_57_0 in mem


    lw      a1,12(sp)
              #                    arg load ended


    call    merge_sort
              #                     179  mu buf_0_15:161 
              #                     180  buf_0_16 = chi buf_0_15:161 
              #                     163  (nop) 
              #                     164   Call void putarray_0(temp_38_ret_of_getarray_57_0, temp_37_ptr_of_*buf_0_57) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_38_ret_of_getarray_57_0_0
              #                    load from temp_38_ret_of_getarray_57_0 in mem


    lw      a0,12(sp)
              #                    occupy a1 with _anonymous_of_temp_37_ptr_of_*buf_0_57_0
              #                    load from temp_37_ptr_of_*buf_0_57 in mem
    ld      a1,16(sp)
              #                    arg load ended


    call    putarray
              #                     319  untrack temp_37_ptr_of_*buf_0_57 
              #                     318  untrack temp_38_ret_of_getarray_57_0 
              #                     181  mu buf_0_16:164 
              #                     182  buf_0_17 = chi buf_0_16:164 
              #                     183  mu buf_0_17:166 
              #                     166  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl buf
              #                     16   global Array:i32:[Some(2_0), Some(100_0)] buf_0 
    .type buf,@object
buf:
    .zero 800
